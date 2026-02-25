#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsdp_initial_save_version'
wp option delete 'lsdp-ratingDiv'
wp option delete 'lsdp-installDate'
wp option delete 'lsdp-v'
wp option delete 'lsdp-type'
wp option delete 'lsdp_plugin_activation_redirect'

