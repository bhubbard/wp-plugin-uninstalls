#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'makenewsmail_plugin_options'
wp option delete 'makenewsmail_lister'
wp option delete 'makenewsmail_status'
wp option delete 'widget_makenewsmail'
wp option delete 'username'
wp option delete 'apikey'

