#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_domain_change-https'
wp option delete 'auto_domain_change-www'
wp option delete 'auto_domain_change-domain'
wp option delete 'auto_domain_change-dismiss'

