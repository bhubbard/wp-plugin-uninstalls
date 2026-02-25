#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nb_business_id'
wp option delete 'nb_base_url'
wp option delete 'nb_primary_colour'
wp option delete 'nb_secondary_colour'
wp option delete 'nb_bathing_availability_active'
wp option delete 'nb_cards_active'
wp option delete 'nb_styling'
wp option delete 'nb_button_style'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nb_xml_status_%'"
wp option delete 'timezone_strong'

