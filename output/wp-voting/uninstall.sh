#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpv-voting-onoff'
wp option delete 'wpv-allow-author-vote'
wp option delete 'wpv-voted-custom-txt'
wp option delete 'wpv-vote-btn-custom-txt'
wp option delete 'wpv-custom-css'
wp option delete 'wpv-voting-alert-msg'
wp option delete 'wpv-allow-public-vote'
wp option delete 'wpv-voting-db-version'
wp option delete 'wpv-top-voted-scount'

