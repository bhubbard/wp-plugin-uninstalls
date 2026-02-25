#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llc_geoip_database_path'
wp option delete 'llc_blacklist'
wp option delete 'llc_countries'
wp option delete 'limit_login_countries_log'

