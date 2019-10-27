main(List<String> args) {
  try {
    throw FormatException('Expected at least 1 section');
  } catch(e) {
    print(e);
  }

  try {
    throw 'Out of llamas';
  } catch(e) {
    print(e);
  }

  try {
    distanceTo(0);
  } catch(e) {
    print(e);
  }

  try {
    throw FormatException('Expected at least 1 secions');
  } catch(e, s) {
    print(s);
  }

  try {
    rethrowException();
  } catch(e, s) {
    print(s);
  } 

  try {
    print('success');
  } catch(e) {
    print('error');
  } finally {
    print('finally');
  }

   try {
     throw 'error';
  } catch(e) {
    print('error');
  } finally {
    print('finally');
  } 
}

void distanceTo(int other) => throw UnimplementedError();

void rethrowException () {
  try {
    throw FormatException('Expected at least 1 secions');
  } catch(e, s) {
    rethrow; 
  } 
}
