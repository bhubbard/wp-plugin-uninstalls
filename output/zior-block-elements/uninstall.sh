#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_transient_timeout_tests_as_array'
wp option delete '_transient_timeout_tests_as_zero'

