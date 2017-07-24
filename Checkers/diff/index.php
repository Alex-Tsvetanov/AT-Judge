<?php
if ($_REQUEST["type"] == "diff")
{
	if (($log = shell_exec("/usr/bin/bash -c \"/usr/bin/diff -w <(/usr/bin/curl '{$_REQUEST["link"]}/{$_REQUEST["output1"]}') <(/usr/bin/curl '{$_REQUEST["link"]}/{$_REQUEST["output2"]}')\"")) == "")
	{
		echo "[\"OK\", 1]";
	}
	else
	{
		echo "[\"WA\", 0]";
	}
	return true;
}
else
{
	echo "[\"Wrong checker\", 0]";
}
?>
