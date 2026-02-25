#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loginsecurity_version'
wp option delete 'loginsecurity_options'
wp option delete 'loginsecurity_last_reset'
wp option delete 'loginsecurity_whitelist'
wp option delete 'loginsecurity_blacklist'
wp option delete 'lz_version'
wp option delete 'loginsecurity_ins_time'
wp option delete 'site_name'
wp option delete 'loginsecurity_license'
wp option delete 'rwl_page'
wp option delete 'rwl_redirect'
wp option delete 'rwl_admin'

