#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hebrewdate_date_order'
wp option delete 'hebrewdate_spelling'
wp option delete 'hebrewdate_correct_sunset'
wp option delete 'hebrewdate_latitude'
wp option delete 'hebrewdate_longitude'
wp option delete 'hebrewdate_latin_display'
wp option delete 'hebrewdate_use_quotes'
wp option delete 'hebrewdate_display_full'
wp option delete 'hebrewdate_display_thousands'

