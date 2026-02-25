#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classy_token'
wp option delete 'classy_cid'
wp option delete 'classy_org_name'
wp option delete 'classy_url'

