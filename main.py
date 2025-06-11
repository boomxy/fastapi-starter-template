# 启动入口
# 可以通过命令启动：uvicorn main:app --reload --host
# 也可以直接启动 python main.py
# 并且可以通过 fastapi 启动
# 多种兼容

if __name__ == '__main__':
    import uvicorn
    uvicorn.run("app.main:app", host="0.0.0.0", port=8000, reload=True)
else:
    import logging
    logging.basicConfig(level=logging.INFO)
    logger = logging.getLogger(__name__)
    # 兼容 fastapi run 启动
    from app.main import app
    logging.info("Starting FastAPI app: %s" , app.title)
