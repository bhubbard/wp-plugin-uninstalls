#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stwwt_dismiss_notice'
wp option delete 'stwwt_dismiss_notice_time'
wp option delete 'STWThumbnails_KeyId'
wp option delete 'STWThumbnails'
wp option delete 'STWThumbnails_method'
wp option delete 'STWThumbnails_sz'
wp option delete 'STWThumbnails_embedsz'
wp option delete 'STWThumbnails_permspec'
wp option delete 'STWThumbnails_permfull'
wp option delete 'STWThumbnails_permqual'
wp option delete 'STWThumbnails_stwq'

