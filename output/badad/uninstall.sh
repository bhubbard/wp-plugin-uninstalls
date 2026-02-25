#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'badad_testlive'
wp option delete 'badad_live_pub'
wp option delete 'badad_live_sec'
wp option delete 'badad_test_pub'
wp option delete 'badad_test_sec'
wp option delete 'badad_call_key'
wp option delete 'badad_siteslug'
wp option delete 'badad_access'

