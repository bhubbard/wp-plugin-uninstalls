#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cigicigi_post_guest_db_version'
wp option delete 'cigicigi_post_guest_options'
wp option delete 'cigicigi_post_guest_count'

