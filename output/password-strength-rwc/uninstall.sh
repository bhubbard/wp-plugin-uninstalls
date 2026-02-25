#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bzwps_min_password_length'
wp option delete 'bzwps_min_numeric_chars'
wp option delete 'bzwps_min_special_chars'

