#!/bin/bash
awk '
/<\/application>/ {
  print "        <provider"
  print "            android:name=\".provider.VirtualStorageProvider\""
  print "            android:authorities=\"${applicationId}.storage\""
  print "            android:exported=\"true\""
  print "            android:grantUriPermissions=\"true\""
  print "            android:permission=\"android.permission.MANAGE_DOCUMENTS\">"
  print "            <intent-filter>"
  print "                <action android:name=\"android.content.action.DOCUMENTS_PROVIDER\" />"
  print "            </intent-filter>"
  print "        </provider>"
  print $0
  next
}
{ print }
' app/src/main/AndroidManifest.xml > tmp_manifest.xml
mv tmp_manifest.xml app/src/main/AndroidManifest.xml
