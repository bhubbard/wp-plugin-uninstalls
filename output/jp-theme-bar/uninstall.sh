#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jptb_label'
wp option delete 'jptb_bg_colour'
wp option delete 'jptb_text_colour'
wp option delete 'jptb_label_bg_colour'
wp option delete 'jptb_label_text_colour'
wp option delete 'jptb_mod_switch'

