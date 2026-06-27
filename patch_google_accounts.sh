#!/bin/bash
awk '
/return createMockGoogleAccounts\(\);/ {
    print "                return new android.accounts.Account[0];"
    next
}
{ print }
' Bcore/src/main/java/top/niunaijun/blackbox/fake/service/GoogleAccountManagerProxy.java > tmp.java
mv tmp.java Bcore/src/main/java/top/niunaijun/blackbox/fake/service/GoogleAccountManagerProxy.java
