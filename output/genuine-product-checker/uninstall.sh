#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genpro_option_name'
wp option delete 'genpro_serial_text'
wp option delete 'genpro_guar_text'
wp option delete 'genpro_formbtn_text'
wp option delete 'genpro_form_positive'
wp option delete 'genpro_form_negative'
wp option delete 'genpro_container_id'

