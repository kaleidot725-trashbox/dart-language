main(List<String> args) {
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print("CLOSED");
      break;
    case 'PENDING':
      print("PENDING");
      break;
    case 'APPROVED':
      print("APPROVED");
      break;
    case 'DENIED':
      print("DENIED");
      break;
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("UNKNOWN");
  }

  switch (command) {
    case 'CLOSED':
      print("CLOSED");
      continue executePending;
    executePending:
    case 'PENDING':
      print("PENDING");
      break;
  }
}
