#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpicp_license'
wp option delete 'wpicp_wangan'
wp option delete 'wpicp_province'
wp option delete 'wpicp_company'
wp option delete 'wpicp_email'
wp option delete 'wpicp_phone'
wp option delete 'wpicp_edi'
wp option delete 'wpicp_app'
wp option delete 'wpicp_miniapp'
wp option delete 'cn_icp'
wp option delete 'cn_ga'

