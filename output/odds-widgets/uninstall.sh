#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'odds_widgets_link_to_us'
wp option delete 'odds_widgets_config_data'
wp option delete 'odds_widgets_subscribe_email'
wp option delete 'odds_widgets_subscribe'
wp option delete 'odds_widgets_replace_jquery'

