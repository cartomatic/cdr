<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:frmwrk="Corel Framework Data">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <!-- Use these elements for the framework to move the container from the app config file to the user config file -->
  <frmwrk:uiconfig>
    <!-- The Application Info should always be the topmost frmwrk element -->
    <frmwrk:applicationInfo userConfiguration="true" />
  </frmwrk:uiconfig>

  <!-- Copy everything -->
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="uiConfig/items">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
      
      <!-- Define the button which shows the docker -->
      <itemData guid="<<GUID A>>" dynamicCommand="<<GmsProjectName>>.Macros.<<ShowDockerMethodName>>" dynamicCategory="2cc24a3e-fe24-4708-9a74-9c75406eebcd" userCaption="<<DockersMenuBtnText>>">
		<!-- btn definition with base64 encoded icon image -->
		<userSmallBitmap xmlns:dt="urn:schemas-microsoft-com:datatypes" dt:dt="bin.base64">
          //8BABAAV0NtblVJX1VJSXRlbUJtcAAAAAAAAAAAKAAAAAAEAAAAAQAAKAAAABAAAAAQAAAA
          AQAIAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAZGRkAMzMzADMz
          MwBMTEwAZmZmAGZmZgB/f38AmZmZAJmZmQCysrIA8PDwAMzMzADMzMwA5eXlAP///wAAADMA
          AABmAAAAmQAzAGYAMzNmAAAAzAAzAJkAAAD/AGYAmQAzM5kAAAD/ADMAzABmAMwAMwD/ADMz
          zABmM5kAMwD/AGYA/wAzM/8AZmaZAGYzzABmAP8AmQDMAGYz/wCZAP8AmTPMAGZmzACZAP8A
          zAD/AJlmzACZM/8AzAD/AMwz/wCZmcwAADNmAAAzmQAAM8wAAGaZADNmmQAAM/8AADP/AABm
          zAAAZv8AAJnMADNmzAAAZv8AM5nMAACZ/wAAzP8AZpnMAAAzAAAAZgAAADMzAABmMwAAmQAA
          AGZmAACZMwAzZjMAAMwAADNmZgAA/wAAAJlmAAD/AAAzmTMAAMwzADOZZgAAzGYAM8wzAAD/
          MwAA/zMAAJmZADP/MwAzmZkAAMyZAGaZZgAA/2YAM8xmAAD/ZgAAzMwAAP+ZAGaZmQAzzJkA
          ZsxmAAD/mQAz/2YAM/+ZADPMzABmzJkAAP/MAAD/zABm/2YAM//MAGb/mQBmzMwAAP//AJnM
          mQCZzMwAmf+ZAGb/zACZ/8wAzP/MADMzAAAzZgAAM5kAAGZmAABmmQAAM8wAAGZmMwAz/wAA
          ZpkzAJmZAABmzAAAM/8AAGbMMwCZzAAAZv8AAGb/AACZmTMAzMwAAJn/AACZ/wAAmZlmAGb/
          MwCZzDMAmf8zAMz/AACZzGYAzP8AAMzMMwCZ/2YAzP8zAMzMZgD//wAA//8AAP//MwDM/2YA
          zMyZAMz/mQD//2YA//+ZAP//zABmAAAAOSAgADkmJgBmMwAAmQAAAJkzAADMAAAAZjMzAP8A
          AAD/AAAAzDMAAJlmAACZMzMAaVNTAG9YWAB1XV0AzDMzAP8zAADMZgAA/zMAAJlmMwCZZmYA
          zGYzAP8zMwD/ZgAAzJkAAP9mAACOc3IAkHVzAP9mMwDMZmYA/5kAAMyZMwD/mQAAnn9/AP/M
          AAD/ZmYA/8wAAMyZZgD/mTMA/5lmAP/MMwDMmZkA/5mZAP/MZgD/zJkA/8zMADMAMwA5JSgA
          OSYoADomKAA5JikAOiYpADonKQA7KCoAZgAzAEArLgBNOTsAZgBmAJkAMwBfTU8AzAAzAJkA
          ZgBmM2YAalZXAGtXWQD/ADMAmQCZAMwAZgCZM2YAel9hAP8AZgDMM2YAmTOZAMwAmQDMM5kA
          zDOZAJlmmQD/AJkAzADMAP8zZgCff4AAp4aIAP8AzADMZpkAzDPMALORkwDMZswA/2aZAP8z
          zAD/AP8A/wD/AMyZzAD/ZswA/zP/AP+ZzAAAAAAAAAAOAA4AAAAAAAAAAA4ODg4ADgAADg4O
          Dg4ODgAOAAAOAA4AAA4AAAAAAA4ADgAADgAODgAOAA4ODgAOAA4ODg4ADg4ADgAOAA4ADgAA
          AAAAAA4ODg4ADg4OAA4ODg4ODg4OAA4OAAAAAAAOAAAADg4AAAAODg4ODg4ODg4ODg4AAAAA
          AA4AAAAODgAODg4ODg4ODg4ODg4ODg4OAAAAAAAADgAADgAAAAAAAAAODg4OAA4ODg4ADg4O
          DgAADgAADgAOAA4OAA4AAA4AAA4AAA4ADgAODgAOAAAOAAAODg4OAA4AAA4ADg4ODgAAAAAA
          AAAODg4OAAAAAAAA8PDwAKCgoADw8PAAAAAAAA==
        </userSmallBitmap>
	  </itemData>

      <!-- Define the control which will be placed on our docker -->
      <itemData guid="<<GUID B>>"
        type="wpfhost"
        hostType="<<AddOnDllPath>>\<<AddOnDllFileName>>.dll,<<AddOnNamespace>>.<<DockerClassName>>"
        enable="true"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="uiConfig/dockers">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
      
      <!-- Define the .Net docker -->
      <dockerData guid="<<GUID C>>"
                  userCaption="<<DockerName>>"
                  wantReturn="true"
                  focusStyle="noThrow">
        <container>
          <!-- add the control to the docker -->
          <item dock="fill" margin="0,0,0,0" guidRef="<<GUID B>>"/>
        </container>
      </dockerData>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
