#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ag_login'
wp option delete 'ag_register'
wp option delete 'ag_fail'
wp option delete 'ag_remember'
wp option delete 'ag_termm'
wp option delete 'ag_url'
wp option delete 'ag_comments'
wp option delete 'ag_lightbox'
wp option delete 'ag_colors'
wp option delete 'bp-pages'

