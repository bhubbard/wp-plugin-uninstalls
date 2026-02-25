#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'diffDomainNewTab-active'
wp option delete 'diffDomainNewTab-exception'

