#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpss_stw_access'
wp option delete 'wpss_stw_secret'
wp option delete 'wpss_projects_title'
wp option delete 'wpss_show_platforms'

