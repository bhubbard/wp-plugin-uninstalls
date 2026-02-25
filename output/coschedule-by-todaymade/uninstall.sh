#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tm_coschedule_token'
wp option delete 'tm_coschedule_calendar_id'
wp option delete 'tm_coschedule_wordpress_site_id'
wp option delete 'tm_coschedule_synced_build'
wp option delete 'tm_coschedule_activation_redirect'
wp option delete 'tm_coschedule_id'
wp option delete 'tm_coschedule_custom_post_types_list'

