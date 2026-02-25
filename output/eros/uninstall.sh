#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icon_size'
wp option delete 'textarea_width'
wp option delete 'textarea_rows'
wp option delete 'bullseye_field_name'
wp option delete 'config_option_textarea_width'
wp option delete 'config_option_textarea_rows'
wp option delete 'diagram_size'

