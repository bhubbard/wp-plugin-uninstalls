#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wts_alias'
wp option delete 'wts_db'
wp option delete 'wts_oc_a2'
wp option delete 'wts_oc'
wp option delete 'wts_site_id'
wp option delete 'wts_web_stat_uid'

