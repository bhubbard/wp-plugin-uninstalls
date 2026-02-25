#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptwittersearch_limit'
wp option delete 'wptwittersearch_terms'
wp option delete 'wptwittersearch_phrase'
wp option delete 'wptwittersearch_nots'
wp option delete 'wptwittersearch_author'
wp option delete 'wptwittersearch_avatar'
wp option delete 'wptwittersearch_date'
wp option delete 'wptwittersearch_dateformat'
wp option delete 'wptwittersearch_lang'
wp option delete 'wptwittersearch_name'
wp option delete 'wptwittersearch_linklove'

