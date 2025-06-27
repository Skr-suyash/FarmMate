import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String latLngToString(
  LatLng latLng,
  bool isLat,
) {
  return isLat ? latLng.latitude.toString() : latLng.longitude.toString();
}

String? getTipOfTheDay() {
  List<String> tips = [
    "Understand your soil's pH and nutrient levels before planting.",
    "Incorporate compost, manure, or cover crops to improve soil structure.",
    "Reduce soil disturbance to preserve beneficial microbes and soil structure.",
    "Rotate crops to break pest and disease cycles and improve soil fertility.",
    "Plant cover crops like legumes and till them into the soil for nitrogen enrichment.",
    "Recycle organic waste into nutrient-rich compost for your garden.",
    "Build layers of organic materials to suppress weeds and enrich the soil.",
    "Use clear plastic to heat the soil and kill pests and pathogens.",
    "Improve drainage and soil temperature, especially in cool climates.",
    "Correct acidic soil pH for optimal plant growth.",
    "Improve soil structure and drainage in clay soils.",
    "Introduce beneficial fungi to enhance nutrient uptake by plant roots.",
    "Use worms to break down organic matter and create nutrient-rich castings.",
    "Add biochar to improve soil water retention and nutrient availability.",
    "Sand, silt, and clay content impact drainage and nutrient retention.",
    "Get a head start on the growing season, especially for long-season crops.",
    "Gradually acclimate seedlings to outdoor conditions before transplanting.",
    "Follow seed packet instructions for proper planting depth.",
    "Select varieties that are well-suited to your climate and soil.",
    "Plant crops in stages to extend the harvest season.",
    "Plant complementary crops together to benefit each other.",
    "Plant seeds directly into the ground when the soil is warm enough.",
    "Protect young plants from pests and frost.",
    "Allow adequate space for plants to grow to their full potential.",
    "Keep track of what you've planted and where.",
    "Ensure even spacing and easy planting of small seeds.",
    "Improve germination rates by soaking seeds before planting.",
    "Remove weaker seedlings to allow stronger ones to thrive.",
    "Grafting can improve disease resistance or fruit quality.",
    "Some farmers believe in planting based on lunar cycles.",
    "Encourage deep root growth by watering thoroughly but less frequently.",
    "Reduce water loss due to evaporation.",
    "Deliver water directly to plant roots, minimizing water waste.",
    "Collect rainwater for irrigation.",
    "Conserve moisture and suppress weeds.",
    "Saturated soil can lead to root rot.",
    "Determine when your plants need water.",
    "Suitable for larger areas and can provide even coverage.",
    "Water plants with similar requirements together.",
    "Increase watering during hot, dry periods.",
    "Disrupt pest and disease cycles.",
    "Attract predators like ladybugs and lacewings.",
    "Control soft-bodied pests like aphids and whiteflies.",
    "A broad-spectrum insecticide and fungicide.",
    "Remove pests like caterpillars and slugs manually.",
    "Trap pests like Japanese beetles or codling moths.",
    "Remove diseased plant debris to prevent spread.",
    "Reduce the risk of disease outbreaks.",
    "Control fungal diseases on fruits and vegetables.",
    "Use a combination of methods to control pests.",
    "Prevent pests from accessing your crops.",
    "Birds can help control insect populations.",
    "A natural insecticide that kills insects by abrasion.",
    "A natural repellent for many pests.",
    "Catch problems early before they become severe.",
    "Suppress weed growth and conserve moisture.",
    "Remove weeds manually before they go to seed.",
    "Cultivate the soil to kill young weeds.",
    "Burn off weeds with a propane torch.",
    "Kill weed seeds with solar heat.",
    "Suppress weeds and improve soil health.",
    "Prevent weeds from growing in pathways.",
    "Disrupt weed growth, but be mindful of soil disturbance.",
    "A natural herbicide for spot treatments.",
    "Can be used to kill weeds, but be careful not to harm desirable plants.",
    "Pick fruits and vegetables when they are ripe for the best flavor.",
    "Avoid bruising or damaging fruits and vegetables.",
    "Follow storage guidelines for each type of fruit and vegetable.",
    "Remove field heat to extend shelf life.",
    "Can, freeze, or dry fruits and vegetables for later use.",
    "Store produce in breathable containers to prevent spoilage.",
    "Remove dirt and debris to prevent mold growth.",
    "Use older items first to prevent spoilage.",
    "Keep track of what you have and when it was harvested.",
    "Store root crops in a cool, humid environment.",
    "Track planting dates, yields, and other important information.",
    "Draw a map of your garden to optimize space and crop placement.",
    "Learn new techniques and connect with other farmers.",
    "Network with other farmers and access resources.",
    "Explore new tools and techniques to improve efficiency.",
    "Protect the environment and conserve resources.",
    "To monitor nutrient levels and pH.",
    "Farming is hard work; take time to rest and recharge.",
    "Pay attention to their growth and health.",
    "Farming is a learning process; don't be afraid to experiment.",
    "Grow crops for sale at local markets.",
    "Integrate livestock into your farming operation for manure and other benefits.",
    "Integrate trees and shrubs into your farming system.",
    "Consider solar or wind power for your farm.",
    "Create a budget and track your expenses.",
    "Outline your goals and strategies for success.",
    "Protect your farm from potential losses.",
    "Don't be afraid to ask for assistance when you need it.",
    "Free up your time to focus on important tasks.",
    "With employees, customers, and other stakeholders.",
    "Farming takes time and effort; don't get discouraged if you don't see results immediately.",
    "Be prepared to adjust your plans based on weather, market conditions, and other factors.",
    "Acknowledge and appreciate your accomplishments.",
    "Farming is a rewarding way to connect with nature and provide food for your community.",
    "Help others learn about farming and sustainable agriculture."
  ];

  // Generate a random index between 0 and tips.length - 1
  int randomIndex = math.Random().nextInt(tips.length);

  // Return a random tip
  return tips[randomIndex];
}

List<LatLng> listDoubleToLatLng(
  List<double>? latitude,
  List<double>? longitude,
) {
  // return latitude and longitude combined
  if (latitude == null ||
      longitude == null ||
      latitude.length != longitude.length) {
    return [];
  }

  List<LatLng> latLngList = [];
  for (int i = 0; i < latitude.length; i++) {
    latLngList.add(LatLng(latitude[i], longitude[i]));
  }

  return latLngList;
}

int? indexMarkerIdentifer(
  LatLng? centerMarkerCoordinate,
  List<LatLng>? listOfLocation,
) {
  // return index of arguement 1 in arguement 2
  if (centerMarkerCoordinate == null || listOfLocation == null) {
    return null; // Return null if inputs are invalid
  }

  for (int i = 0; i < listOfLocation.length; i++) {
    if (centerMarkerCoordinate == listOfLocation[i]) {
      return i;
    }
  }
  return null;
}
