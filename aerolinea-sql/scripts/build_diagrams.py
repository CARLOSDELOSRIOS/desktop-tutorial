"""Reexporta los diagramas DOT editables; requiere Graphviz en PATH."""
from pathlib import Path
import shutil,subprocess
root=Path(__file__).resolve().parents[1]
if not shutil.which('dot'):raise SystemExit('Instale Graphviz y añada dot a PATH antes de reexportar diagramas.')
for p in sorted((root/'docs').glob('*.dot')):
    for fmt in ('svg','pdf','png'):
        subprocess.run(['dot',f'-T{fmt}',str(p),'-o',str(p.with_suffix('.'+fmt))],check=True)
    print(p.name)
