#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bibleVerseOfTheDay_Date%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bibleVerseOfTheDay_Verse%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bibleVerseOfTheDay_LastAttempt%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'randomBibleVerse_LastAttempt%'"

