#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plugin_attivo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%data_attivazione'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%data_installazione'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%versione'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%problemini'"

