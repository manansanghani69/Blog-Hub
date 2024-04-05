## Blog Hub - A Flutter Blogging App

**Blog Hub** is a mobile application built with Flutter that allows users to create, read, and manage blog posts. It offers a seamless user experience across iOS and Android devices.

<img src="https://github.com/manansanghani69/Blog-Hub/assets/148349790/5c88ba93-8af1-44a6-8aaa-7c0e078436af" height="500"/>
<img src="https://github.com/manansanghani69/Blog-Hub/assets/148349790/97954cdd-0c90-4879-a723-4d82479bbb1f" height="500"/>
<img src="https://github.com/manansanghani69/Blog-Hub/assets/148349790/e5518bff-a93c-49d4-b183-31da6f4edd25" height="500"/>
<img src="https://github.com/manansanghani69/Blog-Hub/assets/148349790/2e6ccd7a-c9de-49b0-a413-a468c5fbc6fa" height="500"/>

### Features

* **User Management:** Create user accounts for secure access.
* **Blog Creation:** Write and publish blog posts with rich text formatting.
* **Blog Reading:** Discover and read blog posts from other users.
* **Offline Functionality:** Access and manage saved blogs even without an internet connection (using Hive).
* **State Management:** Utilize Bloc and Cubit for efficient state management and data consistency.
* **Scalable Storage:** Leverage Supabase for secure and scalable cloud storage of blog data.
* **Database:** Employ a robust SQL database for efficient data manipulation and retrieval.

### Technologies Used

* **Flutter:** Cross-platform mobile app development framework.
* **Bloc & Cubit:** State management libraries for predictable UI updates.
* **Supabase:** Backend-as-a-Service (BaaS) platform for authentication and storage.
* **SQL Database:** Structured database for efficient data management.
* **Hive:** Local database for offline functionality.

### Getting Started

1. **Clone the repository:**

```bash
git clone https://your-repository-url.git
```

2. **Install dependencies:**

```bash
cd BlogHub
flutter pub get
```

3. **Configure Supabase:**

* Create a Supabase project ([https://supabase.com/docs](https://supabase.com/docs)).
* Obtain your Supabase project URL and API key from the project settings.
* A file named `lib/core/secrets/app_secrets.dart` in the root of your project and add the following code, replacing the placeholders with your actual values:

```dart
const supabaseUrl = 'YOUR_SUPABASE_URL';
const supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';
```

4. **Run the application:**

```bash
flutter run
```

**Note:** This README provides a basic overview. Additional configuration or setup steps might be required depending on the specific implementation details.
