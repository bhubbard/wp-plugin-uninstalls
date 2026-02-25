#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rndpd_date1'
wp option delete 'rndpd_date2'
wp option delete 'rndpd_post_type'
wp option delete 'rndpd_set_modified_date'
wp option delete 'rndpd_exclude_ids'

