# Hello Jupyter Docker
DockerでJupyterLabを使ってみる。

## 背景
Google Colabが使いやすいので、JupyterNotebookにも興味が出てきた。<br>
今はJupyterNotebookではなく、JupyterLabが使われているそう。<br>
arm版とintel版があるので、アーキテクチャは特に指定せずに使ってみる。

## 試してみた結果
Google Colabではインストールもnotebookで行うが、Dockerfileで行うべきらしい。<br>
Mac（arm）で作ったDockerfileをUbuntu（intel）でも実行できた。<br>
<br>
intel版しかないが、tensorflow側のイメージを使うことにした。<br>
やはりtensorflowはintel版の方が有利なのか。
```diff
-FROM jupyter/tensorflow-notebook:2023-09-16
+FROM tensorflow/tensorflow:2.17.0-jupyter
```