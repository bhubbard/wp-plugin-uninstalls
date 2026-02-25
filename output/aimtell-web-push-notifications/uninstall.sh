#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aimtell_domain'
wp option delete 'aimtell_uid'
wp option delete 'aimtell_idSite'
wp option delete 'aimtell_webpushid'

