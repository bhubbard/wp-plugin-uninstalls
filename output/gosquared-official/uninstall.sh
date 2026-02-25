#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'GSOF_gosquared_site_token'
wp option delete 'GSOF_gosquared_identify'
wp option delete 'GSOF_gosquared_gravity_forms'

