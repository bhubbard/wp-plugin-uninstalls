-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'bibleVerseOfTheDay_Date%';
DELETE FROM wp_options WHERE option_name LIKE 'bibleVerseOfTheDay_Verse%';
DELETE FROM wp_options WHERE option_name LIKE 'bibleVerseOfTheDay_LastAttempt%';
DELETE FROM wp_options WHERE option_name LIKE 'randomBibleVerse_LastAttempt%';

