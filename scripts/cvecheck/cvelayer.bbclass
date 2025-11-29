do_cve_check[prefuncs] += "cvechecklayer"

python cvechecklayer () {
    file = d.getVar("FILE")
    skips = [os.path.normpath(s) for s in (d.getVar("SKIP_PATHS") or "").split()]
    for skip in skips:
        if file.startswith(skip + "/"):
            d.setVar("do_cve_check", "")
}