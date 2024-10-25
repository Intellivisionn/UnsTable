/// Environment variables and shared app constants.
abstract class Constants {
  ///Database URL
  static const String supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://gchpzrrdcleabasvhqhv.supabase.co', 
  );
  ///Database key/token
  static const String supabaseAnnonKey = String.fromEnvironment(
    'SUPABASE_ANNON_KEY',
    defaultValue: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjaHB6cnJkY2xlYWJhc3ZocWh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2ODU4NTUsImV4cCI6MjA0NTI2MTg1NX0.3vz9fmw-pkaDpLdpP67ohwbYuNg00hCfEbt-NlGVBvk',
  );
}