class EventData {
  final String message;
  final String title;
  final String description;
  final DateTime date;

  EventData({
    required this.message,
    required this.title,
    required this.description,
    required this.date,
  });
}

List<EventData> events = [
  EventData(
    message: 'Stay up to date with the latest events!',
    title: 'Coming up: Qwik Workshop',
    description:
        'Join Schrödinger Hat on the 14th of June alongside the master of all Angulars and Qwiks, Misko Hevery.',
    date: DateTime(2023, 6, 14),
  ),
  EventData(
    message:
        'Explore the world of machine learning! There are so many things that cannot fit into a card and this title is long',
    title: 'TensorFlow Dev Summit',
    description:
        'Join us for a two-day event full of technical talks, demos, and conversations about TensorFlow and machine learning.',
    date: DateTime(2023, 7, 10),
  ),
  EventData(
    message: 'Dive into the future of web development!',
    title: 'React Conf',
    description:
        'Discover the latest advancements in React and meet the creators and community members behind this popular JavaScript library.',
    date: DateTime(2023, 8, 25),
  ),
  EventData(
    message: 'Learn about the latest trends in cloud computing!',
    title: 'Google Cloud Next',
    description:
        'Join the brightest minds in cloud computing for sessions, workshops, and networking opportunities.',
    date: DateTime(2023, 9, 29),
  ),
  EventData(
    message: 'Get ready for the biggest open-source conference!',
    title: 'Open Source Summit',
    description:
        'Engage with the community, learn about the latest technologies, and explore the future of open-source development.',
    date: DateTime(2023, 10, 19),
  ),
];
