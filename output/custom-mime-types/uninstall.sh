#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_cmt_mimes'
wp option delete '_cmt_max_upload_size'
wp option delete '_cmt_size_unit'
wp option delete '_cmt_activated'

