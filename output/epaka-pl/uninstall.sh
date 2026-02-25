#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epakaAdminToken'
wp option delete 'epakaShippingCourierMapping'
wp option delete 'epakaSession'
wp option delete 'epakaE'
wp option delete 'epakaP'
wp option delete 'epaka_plugin_version'
wp option delete 'epaka_updated_metadata'
wp option delete 'epaka_credits_agree'

