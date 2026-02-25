#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'restusre_general'
wp option delete 'restusre_api'
wp option delete 'restusre_domain_blacklist'
wp option delete 'restusre_email_blacklist'

