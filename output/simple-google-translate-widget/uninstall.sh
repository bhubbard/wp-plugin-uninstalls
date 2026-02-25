#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_simple_google_translate'
wp option delete 'installredirect_do_activation_redirect'
wp option delete 'wp_sgt_WidgetTitle'
wp option delete 'wp_sgt_sctext_wlink'

