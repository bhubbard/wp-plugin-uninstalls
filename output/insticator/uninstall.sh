#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Insticator_headerCode'
wp option delete 'Insticator_bodyCode'
wp option delete 'Insticator_siteUUID'
wp option delete 'Insticator_embedList'
wp option delete 'Insticator_embedUUID'

