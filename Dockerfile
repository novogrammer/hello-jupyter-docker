FROM tensorflow/tensorflow:2.17.0-jupyter

# APTパッケージのインストール
# # root権限に切り替え
# USER root
RUN apt-get update && apt-get install -y \
    sl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 必要なPythonパッケージをpipでインストール
RUN pip install --upgrade pip
RUN pip install mediapipe-model-maker

# # ユーザー権限に戻す
# USER $NB_USER