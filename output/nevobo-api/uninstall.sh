#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nvb_shortcode-text'
wp option delete 'nvb_table-maxrow'
wp option delete 'nvb_result-maxrow'
wp option delete 'nvb_fixture-maxrow'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%algemeen-vereniging'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%algemeen-locatie'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%algemeen-datumtijd'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%algemeen-highlight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%algemeen-icon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%algemeen-style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%algemeen-htmlstyle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%table-maxname'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%table-fixture'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%table-sets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fixture-location'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fixture-city'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fixture-ical'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fixture-route'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%table-result'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%result-sets'"

