#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'power_fortune_telling_cards_plugin_option'
wp option delete 'rewrite_rules'
wp option delete 'power_daily_cards_plugin_version'
wp option delete 'wp_fortune_telling_cards_plugin_option'

