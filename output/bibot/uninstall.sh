#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bib_site_key'
wp option delete 'bib_secret_key'
wp option delete 'bib_login_check_disable'

