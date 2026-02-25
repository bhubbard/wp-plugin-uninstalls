#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postpeek_activated'
wp option delete 'postpeek_settings_visited'
wp option delete 'postpeek_rating_notice'
wp option delete 'postpeek_options'

