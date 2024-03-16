import 'package:mockito/annotations.dart';
import 'package:my_flutter_app/repositories/product_repositories.dart';

// เมื่อ generate code, mock class จะถูกสร้างลงในไฟล์นี้
import 'product_repositories_mock.mocks.dart';

@GenerateMocks([ProductRepository])
void main() {}