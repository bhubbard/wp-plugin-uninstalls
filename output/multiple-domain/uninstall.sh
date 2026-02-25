#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multiple-domain-domains'
wp option delete 'multiple-domain-ignore-default-ports'
wp option delete 'multiple-domain-add-canonical'

