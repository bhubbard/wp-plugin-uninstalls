#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_404_on_not_exists_pagination'
wp option delete 'enable_yoast_organization_contacts'
wp option delete 'yoast_organization_phone'
wp option delete 'yoast_organization_email'
wp option delete 'enable_removing_typetext'
wp option delete 'enable_replacing_current_links'

