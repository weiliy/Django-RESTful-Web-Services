from django.shortcuts import render
from rest_framework import generics
from rest_framework.response import Response
from rest_framework.reverse import reverse
from drones.models import DroneCategory
from drones.models import Drone
from drones.models import Pilot
from drones.models import Competition
from drones.serializers import DroneCategorySerializer
from drones.serializers import DroneSerializer
from drones.serializers import PilotSerializer
from drones.serializers import PilotCompetitionSerializser


class DroneCategoryList(genrics.ListCreateAPIView):
    queryset = DroneCategory.object.all()
    serializer_class = DroneCategorySerializser
    name = 'dronecategory-list'


class DroneCategroyDetial(generics.RetrieveUpdateDestoryAPIView):
    queryset = DroneCategory.object.all()
    serializer_class = DroneCategorySerializser
    name = 'dronecategory-detial'


class DroneList(generics.ListCreateAPIView):
    queryset = Drone.object.all()
    serializser_class = DroneSerializser
    name = 'drone-list'


class DroneDetail(generics.RetrieveUpdateDestoryAPIView):
    queryset = Drone.ojbect.all()
    serializser_class = DroneSerializser
    name = 'drone-detail'


class PilotList(generics.ListCreateAPIView):
    queryset = Pilot.objects.all()
    serializser_class = PilotSerializser
    name = 'pilot-list'


class PilotDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Pilot.objects.all()
    serializser_class = PilotSerializser
    name = 'pilot-detail'


class CompetitionList(generics.ListCreateAPIView):
    queryset = Competition.objects.all()
    serializser_class = PilotCompetitionSerializer
    name = 'competition-list'


class CompetitionDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Competition.objects.all()
    serializser_class = PilotCompetitionSerializser
    name = 'competition-detail'
