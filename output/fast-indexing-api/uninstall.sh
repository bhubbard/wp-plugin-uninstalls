#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giapi_auto_submissions'
wp option delete 'giapi_requests'
wp option delete 'rank-math-options-instant-indexing'
wp option delete 'giapi_settings'
wp option delete 'giapi_notices'
wp option delete 'rank_math_indexnow_log'

