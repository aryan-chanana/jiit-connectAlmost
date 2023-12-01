import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

List<String> array = [
  'Ground-Floor-Stairs-8',
  'Ground-Floor-Right-Washroom',
  'Cafe',
  'Old-Cafe',
  'Badminton-Court',
  'Annapurna',
  'Open-Space',
  'Physics-Lab',
  'CL-2',
  'CL-1',
  'EMI-Lab',
  'Ground-Floor-Stairs-5',
  'Temple',
  'Ground-Floor-Left-Washroom',
  'Multi-Purpose-Hall',
  'Ground-Floor-Stairs-6',
  'Ground-Floor-Stairs-9',
  'Small-Gate',
  'Entry',
  'Workshop-Lab',
  'Admin',
  'LRC',
  'Innovation-Hub',
  'Ground-Floor-Stairs-7',
  'Ground',
  'Basement',
  'Ground-Floor-Stairs-10',
  'O.A.T.',
  'First-Floor-Left-Washroom',
  'First-Floor-Right-Washroom',
  'First-Floor-Stairs-1',
  'First-Floor-Stairs-2',
  'First-Floor-Stairs-3',
  'First-Floor-Stairs-4',
  'First-Floor-Stairs-5',
  'First-Floor-Stairs-6',
  'First-Floor-Stairs-7',
  'First-Floor-Stairs-8',
  '111',
  'CR-1',
  'Faculty-Block-ECE',
  'EDD-Drawing-Hall',
  'M.P.H-First-Floor',
  '113',
  'CR-2',
  '116',
  'T1',
  '117',
  'LT-2',
  '127',
  'T2',
  '126',
  'T3',
  '118',
  'LT1',
  'SR-05',
  '123',
  'CR-7',
  '133',
  'Communication-Lab',
  '132',
  'M.M.L. Lab',
  '130',
  'Basic-Electronics-Lab',
  '134',
  'DSP Lab',
  '137',
  'CR-8',
  '158',
  'Project-Lab-CSE',
  '157',
  'Project-Lab-ECE',
  '121',
  'T4',
  '138',
  'CR-9',
  '140',
  'CICR-Lab',
  '142',
  'VLSI-Project-Lab',
  '148',
  'CR-44',
  '151',
  'CL-4',
  '150',
  'CR-59',
  '153',
  'CR-45',
  '154',
  'CR-60',
  'CL-3',
  'Server-Room',
  'Second-Floor-Left-Washroom',
  'Second-Floor-Right-Washroom',
  'Second-Floor-Stairs-1',
  'Second-Floor-Stairs-2',
  'Second-Floor-Stairs-3',
  'Second-Floor-Stairs-4',
  'Faculty-Block-CSE',
  'Faculty-Block-Other-Subjects',
  'HSS-Faculty-Block',
  '217',
  'CR-3',
  '219',
  'Humanities-Lab',
  'Analog-to-Digital-Lab',
  '224',
  'T5',
  '225',
  'CR-4',
  '226',
  'CR-5',
  '228',
  'T6',
  '229',
  'CR-6',
  '230',
  'T8',
  '234',
  'Electromagnetics-Lab',
  '237',
  'Microcontrollers-Lab',
  '238',
  'CR-53',
  '241',
  'Mobile-Technology-Lab',
  '240',
  'CR-54',
  '242',
  'CR-46',
  '243',
  'P-&-D-Computing-Lab',
  '264',
  'Information-Security-Lab',
  '263',
  'SR-06',
  'LT-9',
  '244',
  'TR-09',
  '246',
  'LT-3',
  '254',
  'LT-4',
  '259',
  'LT5',
  '255',
  'LT-6',
  '257'
];
int counter = 0;
var groundObj = {
  20: 'Stairs-8',
  21: 'Ground-Floor-Right-Washroom',
  22: 'Cafe',
  23: 'Old-Cafe',
  24: 'Badminton-Court',
  25: 'Annapurna',
  26: 'Open-Space',
  41: 'Physics-Lab',
  35: 'CL-2',
  31: 'CL-1',
  27: 'EMI-Lab',
  28: 'Stairs-5',
  29: 'Temple',
  30: 'Ground-Floor-Left-Washroom',
  32: 'Multi-Purpose-Hall',
  33: 'Stairs-6',
  34: 'Stairs-9',
  36: 'Small-Gate',
  37: 'Entry',
  38: 'Workshop-Lab',
  39: 'Admin',
  40: 'LRC',
  42: 'Innovation-Hub',
  43: 'Stairs-7',
  44: 'Ground',
  45: 'Basement',
  46: 'Stairs-10',
  47: 'O.A.T.',
  101: 'F101',
  102: 'F102',
  103: 'F103',
  104: 'F104',
  105: 'F105',
  106: 'F106',
  107: 'F107',
  108: 'F108',
  109: 'F109',
  110: 'F110',
  111: 'F111',
  131: 'F131',
  124: 'F124',
  112: 'F112',
  113: 'F113',
  116: 'F116',
  117: 'F117',
  127: 'F127',
  126: 'F126',
  118: 'F118',
  125: 'F125',
  123: 'F123',
  133: 'F133',
  132: 'F132',
  130: 'F130',
  134: 'F134',
  137: 'F137',
  158: 'F158',
  157: 'F157',
  121: 'F121',
  138: 'F138',
  140: 'F140',
  142: 'F142',
  148: 'F148',
  151: 'F151',
  150: 'F150',
  153: 'F153',
  154: 'F154',
  128: 'F128',
  201: 'S201',
  202: 'S202',
  203: 'S203',
  204: 'S204',
  205: 'S205',
  206: 'S206',
  207: 'S207',
  208: 'S208',
  209: 'S209',
  217: 'S217',
  219: 'S219',
  224: 'S224',
  225: 'S225',
  226: 'S226',
  228: 'S228',
  229: 'S229',
  230: 'S230',
  234: 'S234',
  237: 'S237',
  238: 'S238',
  241: 'S241',
  240: 'S240',
  242: 'S242',
  243: 'S243',
  264: 'S264',
  263: 'S263',
  244: 'S244',
  246: 'S246',
  254: 'S254',
  259: 'S259',
  255: 'S255',
  257: 'S257'
};

var roomObj = {
  'Ground-Floor-Stairs-8': 20,
  'Ground-Floor-Right-Washroom': 21,
  'Cafe': 22,
  'Old-Cafe': 23,
  'Badminton-Court': 24,
  'Annapurna': 25,
  'Open-Space': 26,
  'Physics-Lab': 41,
  'CL-2': 35,
  'CL-1': 31,
  'EMI-Lab': 27,
  'Ground-Floor-Stairs-5': 28,
  'Temple': 29,
  'Ground-Floor-Left-Washroom': 30,
  'Multi-Purpose-Hall': 32,
  'Ground-Floor-Stairs-6': 33,
  'Ground-Floor-Stairs-9': 34,
  'Small-Gate': 36,
  'Entry': 37,
  'Workshop-Lab': 38,
  'Admin': 39,
  'LRC': 40,
  'Innovation-Hub': 42,
  'Ground-Floor-Stairs-7': 43,
  'Ground': 44,
  'Basement': 45,
  'Ground-Floor-Stairs-10': 46,
  'O.A.T.': 47,
  'First-Floor-Left-Washroom': 101,
  'First-Floor-Right-Washroom': 102,
  'First-Floor-Stairs-1': 103,
  'First-Floor-Stairs-2': 104,
  'First-Floor-Stairs-3': 105,
  'First-Floor-Stairs-4': 106,
  'First-Floor-Stairs-5': 107,
  'First-Floor-Stairs-6': 108,
  'First-Floor-Stairs-7': 109,
  'First-Floor-Stairs-8': 110,
  '111': 111,
  'CR-1': 111,
  'Faculty-Block-ECE': 131,
  'EDD-Drawing-Hall': 124,
  'M.P.H-First-Floor': 112,
  '113': 113,
  'CR-2': 113,
  '116': 116,
  'T1': 116,
  '117': 117,
  'LT-2': 117,
  '127': 127,
  'T2': 127,
  '126': 126,
  'T3': 126,
  '118': 118,
  'LT1': 118,
  'SR-05': 125,
  '123': 123,
  'CR-7': 123,
  '133': 133,
  'Communication-Lab': 133,
  '132': 132,
  'M.M.L. Lab': 132,
  '130': 130,
  'Basic-Electronics-Lab': 130,
  '134': 134,
  'DSP Lab': 134,
  '137': 137,
  'CR-8': 137,
  '158': 158,
  'Project-Lab-CSE': 158,
  '157': 157,
  'Project-Lab-ECE': 157,
  '121': 121,
  'T4': 121,
  '138': 138,
  'CR-9': 138,
  '140': 140,
  'CICR-Lab': 140,
  '142': 142,
  'VLSI-Project-Lab': 142,
  '148': 148,
  'CR-44': 148,
  '151': 151,
  'CL-4': 150,
  '150': 150,
  'CR-59': 150,
  '153': 153,
  'CR-45': 153,
  '154': 154,
  'CR-60': 154,
  'CL-3': 151,
  'Server-Room': 128,
  'Second-Floor-Left-Washroom': 201,
  'Second-Floor-Right-Washroom': 202,
  'Second-Floor-Stairs-1': 203,
  'Second-Floor-Stairs-2': 204,
  'Second-Floor-Stairs-3': 205,
  'Second-Floor-Stairs-4': 206,
  'Faculty-Block-CSE': 207,
  'Faculty-Block-Other-Subjects': 208,
  'HSS-Faculty-Block': 209,
  '217': 217,
  'CR-3': 217,
  '219': 219,
  'Humanities-Lab': 219,
  'Analog-to-Digital-Lab': 224,
  '224': 224,
  'T5': 225,
  '225': 225,
  'CR-4': 226,
  '226': 226,
  'CR-5': 228,
  '228': 228,
  'T6': 229,
  '229': 229,
  'CR-6': 230,
  '230': 230,
  'T8': 234,
  '234': 234,
  'Electromagnetics-Lab': 237,
  '237': 237,
  'Microcontrollers-Lab': 238,
  '238': 238,
  'CR-53': 241,
  '241': 241,
  'Mobile-Technology-Lab': 240,
  '240': 240,
  'CR-54': 242,
  '242': 242,
  'CR-46': 243,
  '243': 243,
  'P-&-D-Computing-Lab': 264,
  '264': 264,
  'Information-Security-Lab': 263,
  '263': 263,
  'SR-06': 244,
  'LT-9': 244,
  '244': 244,
  'TR-09': 246,
  '246': 246,
  'LT-3': 254,
  '254': 254,
  'LT-4': 259,
  '259': 259,
  'LT5': 255,
  '255': 255,
  'LT-6': 257,
  '257': 257
};

class Edge {
  final int start;
  final int end;
  final int weight;

  Edge(this.start, this.end, this.weight);
}

List<Edge> edges = [
//Adding edges for Ground Floor
  Edge(20, 21, 1),
  Edge(21, 22, 3),
  Edge(22, 24, 1),
  Edge(24, 25, 3),
  Edge(25, 26, 2),
  Edge(26, 41, 4),
  Edge(41, 35, 1),
  Edge(31, 35, 2),
  Edge(27, 31, 3),
  Edge(27, 28, 1),
  Edge(29, 28, 1),
  Edge(30, 29, 2),
  Edge(32, 30, 2),
  Edge(32, 33, 2),
  Edge(34, 32, 2),
  Edge(38, 34, 3),
  Edge(34, 36, 1),
  Edge(33, 34, 1),
  Edge(33, 39, 4),
  Edge(40, 43, 2),
  Edge(42, 43, 2),
  Edge(42, 47, 2),
  Edge(47, 23, 1),
  Edge(47, 20, 1),
  //Edge(23, 42, 3),
  //Edge(20, 23, 2),
  Edge(29, 32, 1),
  Edge(36, 39, 4),
  //Edge(40,25,2),
  //Edge(43,24,2),
  // Edge(32, 31, 7),
  Edge(39, 41, 2),
  Edge(26, 44, 2),
  Edge(40, 25, 2),
  Edge(24, 43, 2),
  Edge(22, 42, 2),
  Edge(45, 46, 3),
  Edge(37, 40, 3),
  Edge(39, 37, 3),
  Edge(37, 26, 2),
  // Edge(43, 46, 2),
  Edge(45, 38, 8),
  // Edge(39, 34, 5),

  //Adding edges for First Floor
  Edge(111, 113, 1),
  Edge(116, 113, 1),
  Edge(116, 117, 1),
  Edge(117, 127, 1),
  Edge(127, 126, 2),
  Edge(126, 118, 1),
  Edge(117, 118, 2),
  Edge(125, 118, 2),
  Edge(125, 121, 1),
  Edge(121, 123, 1),
  Edge(124, 123, 3),
  Edge(124, 131, 6),
  Edge(111, 103, 1),
  Edge(107, 103, 2),
  Edge(104, 111, 3),
  Edge(104, 128, 2),
  Edge(101, 107, 2),
  Edge(103, 112, 2),
  Edge(101, 112, 2),
  Edge(107, 112, 3),
  Edge(108, 104, 2),
  Edge(130, 131, 2),
  //Edge(130,123,6),
  Edge(109, 131, 2),
  Edge(105, 109, 2),
  Edge(105, 148, 5),
  Edge(105, 153, 5),
  Edge(130, 132, 2),
  Edge(133, 132, 1),
  Edge(133, 134, 1),
  Edge(134, 158, 1),
  Edge(158, 157, 2),
  Edge(134, 137, 3),
  Edge(137, 157, 1),
  Edge(137, 138, 1),
  Edge(138, 140, 1),
  Edge(140, 142, 2),
  Edge(142, 148, 3),
  Edge(142, 153, 3),
  Edge(148, 153, 1),
  Edge(153, 151, 2),
  Edge(154, 151, 1),
  Edge(154, 150, 1),
  Edge(148, 150, 1),
  Edge(102, 148, 3),
  Edge(102, 153, 3),
  Edge(102, 106, 1),
  Edge(102, 110, 2),
  Edge(105, 142, 2),
  Edge(128, 108, 1),
  Edge(124, 128, 2),

  //Adding Edges For Second Floor

  Edge(217, 203, 3),
  Edge(217, 219, 1),
  Edge(219, 224, 1),
  Edge(224, 226, 1),
  Edge(226, 225, 1),
  Edge(225, 229, 2),
  Edge(226, 228, 2),
  Edge(228, 229, 1),
  Edge(230, 228, 1),
  Edge(230, 234, 1),
  Edge(234, 237, 1),
  Edge(204, 237, 1),
  Edge(207, 237, 2),
  Edge(207, 204, 2),
  Edge(207, 208, 7),
  Edge(205, 208, 2),
  Edge(205, 238, 1),
  Edge(240, 238, 1),
  Edge(240, 241, 1),
  Edge(242, 241, 1),
  Edge(243, 242, 2),
  Edge(264, 242, 1),
  Edge(243, 263, 1),
  Edge(264, 263, 2),
  Edge(244, 243, 1),
  Edge(246, 244, 1), //give tr09
  Edge(246, 209, 1),
  Edge(209, 259, 3),
  Edge(209, 254, 3),
  Edge(259, 254, 1),
  Edge(259, 257, 1),
  Edge(257, 255, 1),
  Edge(254, 255, 1),
  Edge(202, 259, 3),
  Edge(202, 254, 3),
  Edge(202, 206, 2),
  Edge(217, 201, 4),
  Edge(201, 203, 2),

  //Edges between stairs to connect all the floors
  //Connecting 2nd and 1st floor
  Edge(203, 103, 2),
  Edge(204, 104, 2),
  Edge(205, 105, 2),
  Edge(206, 106, 2),

  //Connecting 1st and Ground floor
  Edge(107, 28, 2),
  Edge(108, 33, 2),
  Edge(109, 43, 2),
  Edge(110, 20, 2),
];

class Vertex {
  final int vertex;
  final int distance;

  Vertex(this.vertex, this.distance);
}

abstract class Graph {
  void addEdge(int start, int end, int weight);

  bool isValidVertex(int vertex);

  List<int> dijkstra(int start, int end);
}

class GraphWithWeights implements Graph {
  final int vertices;
  final List<List<Map<String, int>>> adjacencyList;

  GraphWithWeights(this.vertices)
      : adjacencyList = List.generate(vertices, (index) => []);

  @override
  void addEdge(int start, int end, int weight) {
    if (isValidVertex(start) && isValidVertex(end)) {
      adjacencyList[start].add({"to": end, "weight": weight});
      adjacencyList[end].add({"to": start, "weight": weight});
    }
  }

  @override
  bool isValidVertex(int vertex) {
    return vertex >= 0 && vertex < vertices;
  }

  @override
  List<int> dijkstra(int start, int end) {
    if (!isValidVertex(start)) {
      print("Invalid start vertex.");
      return [];
    }else if (!isValidVertex(end)) {
      print("Invalid end vertex.");
      return [];
    }

    PriorityQueue<Vertex> priorityQueue =
    PriorityQueue<Vertex>((a, b) => a.distance.compareTo(b.distance));

    List<int> distances = List.generate(vertices, (index) => 0x20000000000000);
    List<bool> visited = List.generate(vertices, (index) => false);
    List<int> previousVertices = List.generate(vertices, (index) => -1);

    priorityQueue.add(Vertex(start, 0));
    distances[start] = 0;

    while (priorityQueue.isNotEmpty) {
      int currentVertex = priorityQueue.removeFirst().vertex;

      if (visited[currentVertex]) {
        continue;
      }

      visited[currentVertex] = true;

      for (var neighbor in adjacencyList[currentVertex]) {
        int to = neighbor["to"]!;
        int weight = neighbor["weight"]!;
        int newDistance = distances[currentVertex] + weight;

        if (newDistance < distances[to]) {
          distances[to] = newDistance;
          previousVertices[to] = currentVertex;
          priorityQueue.add(Vertex(to, newDistance));
        }
      }
    }

    // return distances;
    return previousVertices;
  }
}

class PathPrinter {
  String printPath(int start, int end, List<int> previousVertices,
      Map<int, String> groundObj) {
    List<String> path = [];

    if (groundObj[start] == null || groundObj[end] == null) {
      print("Invalid start or end vertex.");
      return path.toString();
    }

    int currentVertex = end;

    while (currentVertex != -1) {
      if (groundObj[currentVertex] == null) {
        print("Error: Missing mapping for vertex $currentVertex.");
        return path.toString();
      }
      path.add(roomObj.keys.firstWhere((k) => roomObj[k] == currentVertex, orElse: () => ''));
      currentVertex = previousVertices[currentVertex];
    }

    if (path.isEmpty) {
      print("No valid path exists between the given vertices.");
    } else {
      print(
          "Shortest path from vertex ${groundObj[start]} to ${groundObj[end]}:\n \t ${path.reversed.join(' -> ')}");
    }
    return path.reversed.join(' -> ');
  }
}

class GraphBuilder {
  Graph buildGraph(int numOfVertices, List<Edge> edges) {
    GraphWithWeights graph = GraphWithWeights(numOfVertices);

    for (var edge in edges) {
      graph.addEdge(edge.start, edge.end, edge.weight);
    }
    print("Edges added");

    return graph;
  }
}

class shortest extends StatelessWidget {
  String Start = '';
  String Destination = '';
  String path = '';

  shortest(String start, String destination) {
    Start = start;
    Destination = destination;
    _shortestPath(start, destination);
  }

  _shortestPath(starting, destinationer) {
    GraphBuilder graphBuilder = GraphBuilder();
    Graph graph = graphBuilder.buildGraph(array.length, edges);
    int start;
    int end;
    List<int> distances;

    try {
      start = roomObj[starting]!;
      end = roomObj[destinationer]!;
      distances = graph.dijkstra(start, end);
      PathPrinter pathPrinter = PathPrinter();
      path = pathPrinter.printPath(start, end, distances, groundObj);

      if (distances[end] == 0x20000000000000) {
        print("No valid path exists between the given vertices.");
      }
    }
    catch (error) {
      path = 'Sorry the entered destination does not exist in our database.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Path",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/locationbg2.jpg"),
              fit: BoxFit.cover,
            )),
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Container(
            height: 250,
            child: Card(
              color: const Color.fromARGB(90, 7, 11, 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$Start -> $Destination',
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Path:',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    path.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
