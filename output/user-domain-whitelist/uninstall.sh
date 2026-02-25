#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mode'
wp option delete 'domain_whitelist'
wp option delete 'domain_blacklist'
wp option delete 'bad_domain_message'

